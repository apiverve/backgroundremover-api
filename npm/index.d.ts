declare module '@apiverve/backgroundremover' {
  export interface backgroundremoverOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface backgroundremoverResponse {
    status: string;
    error: string | null;
    data: BackgroundRemoverData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BackgroundRemoverData {
      id:              null | string;
      width:           number | null;
      height:          number | null;
      background:      null | string;
      foregroundRatio: number | null;
      outputSize:      number | null;
      mimeType:        null | string;
      expires:         number | null;
      downloadURL:     null | string;
  }

  export default class backgroundremoverWrapper {
    constructor(options: backgroundremoverOptions);

    execute(callback: (error: any, data: backgroundremoverResponse | null) => void): Promise<backgroundremoverResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: backgroundremoverResponse | null) => void): Promise<backgroundremoverResponse>;
    execute(query?: Record<string, any>): Promise<backgroundremoverResponse>;
  }
}
