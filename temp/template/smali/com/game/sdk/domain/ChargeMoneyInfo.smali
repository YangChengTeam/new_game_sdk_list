.class public Lcom/game/sdk/domain/ChargeMoneyInfo;
.super Ljava/lang/Object;
.source "ChargeMoneyInfo.java"


# instance fields
.field public chargeMoney:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pay_money"
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public percent:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "percent"
    .end annotation
.end field

.field public realMoney:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "real_money"
    .end annotation
.end field

.field public returnGameMoney:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "return_game_money"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
