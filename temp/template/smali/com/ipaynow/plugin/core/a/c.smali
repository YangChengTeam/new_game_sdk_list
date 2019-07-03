.class public final Lcom/ipaynow/plugin/core/a/c;
.super Ljava/lang/Object;


# static fields
.field private static p:Ljava/lang/String;

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "RSA/ECB/PKCS1Padding"

    sput-object v0, Lcom/ipaynow/plugin/core/a/c;->p:Ljava/lang/String;

    const/16 v0, 0x800

    sput v0, Lcom/ipaynow/plugin/core/a/c;->q:I

    const/16 v0, 0xb

    sput v0, Lcom/ipaynow/plugin/core/a/c;->r:I

    sget v0, Lcom/ipaynow/plugin/core/a/c;->q:I

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/ipaynow/plugin/core/a/c;->s:I

    sget v1, Lcom/ipaynow/plugin/core/a/c;->r:I

    sub-int/2addr v0, v1

    sput v0, Lcom/ipaynow/plugin/core/a/c;->t:I

    return-void
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    array-length v0, p1

    sget v2, Lcom/ipaynow/plugin/core/a/c;->t:I

    div-int/2addr v0, v2

    array-length v2, p1

    sget v3, Lcom/ipaynow/plugin/core/a/c;->t:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    sget v3, Lcom/ipaynow/plugin/core/a/c;->s:I

    mul-int/2addr v0, v3

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v0, Lcom/ipaynow/plugin/core/a/c;->p:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    move v0, v1

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v0

    :cond_1
    :try_start_2
    array-length v1, p1

    sub-int/2addr v1, v0

    sget v4, Lcom/ipaynow/plugin/core/a/c;->t:I

    if-le v1, v4, :cond_2

    sget v1, Lcom/ipaynow/plugin/core/a/c;->t:I

    :cond_2
    invoke-virtual {v3, p1, v0, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget v1, Lcom/ipaynow/plugin/core/a/c;->t:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
