.class public final Lcom/ipaynow/plugin/conf/d;
.super Ljava/lang/Object;


# static fields
.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v1, ""

    const-string v0, ""

    :try_start_0
    const-string v2, "plugin_phone"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v2, "MK"

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/NativeUtils;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSAK"

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/NativeUtils;->getContent(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sput-object v1, Lcom/ipaynow/plugin/conf/d;->i:Ljava/lang/String;

    sput-object v0, Lcom/ipaynow/plugin/conf/d;->h:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/ipaynow/plugin/conf/c;->g:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/ipaynow/plugin/conf/d;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ipaynow/plugin/conf/d;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1MLevZ7IPgEcx9hQANi1s/jqAYSk//uRoXBXixhMBAj/F07g/PgvFOZ79mR0E8pT1Jhyj1WN/HlahIYenieciJ1P/L8KHZoZR0hKeZ4K8g951AaZbL5B1HnrPpggZ8rNgeo0TsoK3uaWC9eSRW6zEhSR8hE/EE7CrI+eUlji8dFm3kw6MwUfbZpfH/+fePLijTMWl9KL8Nmb+kYjYtQdjiaee/IjNdjnrxlMFJ1ymXU0v4BvCn9uc7JL0PiHDwpyjtYZPX+wtimRNzOfuyXrZr/7yElKnsO3q/OmQ6cmC9qUyf0iaIGbtnVknZtVmozvFMLjxQGUK+z/hGk09pZ0SQIDAQAB"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/conf/d;->i:Ljava/lang/String;

    return-object v0
.end method
