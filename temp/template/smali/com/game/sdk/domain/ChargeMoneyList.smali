.class public Lcom/game/sdk/domain/ChargeMoneyList;
.super Ljava/lang/Object;
.source "ChargeMoneyList.java"


# instance fields
.field public chargeMoneyList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "detail"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ChargeMoneyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public isOpen:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "open"
    .end annotation
.end field

.field public mixMoney:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mix_money"
    .end annotation
.end field

.field public rateHigh:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rate_high"
    .end annotation
.end field

.field public rateLow:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rate_low"
    .end annotation
.end field

.field public returnRangeMoney:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "return_range_money"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
