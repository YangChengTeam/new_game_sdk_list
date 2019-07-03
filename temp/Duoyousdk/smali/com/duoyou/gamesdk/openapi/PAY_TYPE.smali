.class public final enum Lcom/duoyou/gamesdk/openapi/PAY_TYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoyou/gamesdk/openapi/PAY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

.field public static final enum ALIPAY:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

.field public static final enum WEIXIN:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    const-string v1, "WEIXIN"

    const-string v2, "wx"

    invoke-direct {v0, v1, v3, v2}, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->WEIXIN:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    new-instance v0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    const-string v1, "ALIPAY"

    const-string v2, "ali"

    invoke-direct {v0, v1, v4, v2}, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->ALIPAY:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    sget-object v1, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->WEIXIN:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->ALIPAY:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->$VALUES:[Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoyou/gamesdk/openapi/PAY_TYPE;
    .locals 1

    const-class v0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/duoyou/gamesdk/openapi/PAY_TYPE;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->$VALUES:[Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    invoke-virtual {v0}, [Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->text:Ljava/lang/String;

    return-object v0
.end method
