.class public Lcom/duoyou/gamesdk/openapi/DyRoleInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/openapi/DyRoleInfo$TYPE;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x616707186af37c8eL


# instance fields
.field private balanceId:I

.field private balanceName:Ljava/lang/String;

.field private balanceNum:I

.field private dyUserId:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private extraMap:Ljava/util/Map;
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

.field private gender:Ljava/lang/String;

.field private power:I

.field private profession:Ljava/lang/String;

.field private professionId:I

.field private roleId:Ljava/lang/String;

.field private roleLevel:I

.field private roleName:Ljava/lang/String;

.field private turn:I

.field private type:Ljava/lang/String;

.field private vip:I

.field private zoneId:Ljava/lang/String;

.field private zoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->extraMap:Ljava/util/Map;

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
.method public getBalanceId()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->balanceId:I

    return v0
.end method

.method public getBalanceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->balanceName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->emptyWithWu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBalanceNum()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->balanceNum:I

    return v0
.end method

.method public getDyUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->dyUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraMap()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->extraMap:Ljava/util/Map;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->gender:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->emptyWithWu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPower()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->power:I

    return v0
.end method

.method public getProfession()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->profession:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->emptyWithWu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfessionId()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->professionId:I

    return v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->roleId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->emptyWithWu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoleLevel()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->roleLevel:I

    return v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->roleName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->emptyWithWu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTurn()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->turn:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->vip:I

    return v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->zoneName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->emptyWithWu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->extraMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBalanceId(I)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->balanceId:I

    return-void
.end method

.method public setBalanceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->balanceName:Ljava/lang/String;

    return-void
.end method

.method public setBalanceNum(I)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->balanceNum:I

    return-void
.end method

.method public setDyUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->dyUserId:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->gender:Ljava/lang/String;

    return-void
.end method

.method public setPower(I)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->power:I

    return-void
.end method

.method public setProfession(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->profession:Ljava/lang/String;

    return-void
.end method

.method public setProfessionId(I)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->professionId:I

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->roleId:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevel(I)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->roleLevel:I

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setTurn(I)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->turn:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setVip(I)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->vip:I

    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->zoneId:Ljava/lang/String;

    return-void
.end method

.method public setZoneName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->zoneName:Ljava/lang/String;

    return-void
.end method
