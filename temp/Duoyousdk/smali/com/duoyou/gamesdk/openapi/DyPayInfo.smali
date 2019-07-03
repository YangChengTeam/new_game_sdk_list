.class public Lcom/duoyou/gamesdk/openapi/DyPayInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x77f4631a5f21fddfL


# instance fields
.field private amount:J

.field private extra:Ljava/lang/String;

.field private extralMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private gameOrderId:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private power:I

.field private productId:Ljava/lang/String;

.field private productIntro:Ljava/lang/String;

.field private roleId:Ljava/lang/String;

.field private roleLevel:I

.field private roleName:Ljava/lang/String;

.field private turn:I

.field private vip:I

.field private zoneId:Ljava/lang/String;

.field private zoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->extralMap:Ljava/util/Map;

    return-void
.end method

.method private emptyWithWu(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u65e0"

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getAmount()J
    .locals 2

    iget-wide v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->amount:J

    return-wide v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getExtralMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->extralMap:Ljava/util/Map;

    return-object v0
.end method

.method public getGameOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->gameOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->power:I

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductInro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->productIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIntroWithAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->productIntro:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->productIntro:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->roleLevel:I

    return v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getTurn()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->turn:I

    return v0
.end method

.method public getVip()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->vip:I

    return v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->zoneId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->emptyWithWu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoneName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->zoneName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->emptyWithWu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->extralMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAmount(J)V
    .locals 1

    iput-wide p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->amount:J

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->extra:Ljava/lang/String;

    return-void
.end method

.method public setGameOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->gameOrderId:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setPower(I)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->power:I

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductInro(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->productIntro:Ljava/lang/String;

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->roleId:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevel(I)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->roleLevel:I

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setTurn(I)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->turn:I

    return-void
.end method

.method public setVip(I)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->vip:I

    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->zoneId:Ljava/lang/String;

    return-void
.end method

.method public setZoneName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->zoneName:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "orderNum"

    iget-object v2, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gameOrderNo"

    iget-object v2, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->gameOrderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "productId"

    iget-object v2, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "productIntro"

    iget-object v2, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->productIntro:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "roleId"

    iget-object v2, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "roleName"

    iget-object v2, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "crashFee"

    iget-wide v2, p0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->amount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
