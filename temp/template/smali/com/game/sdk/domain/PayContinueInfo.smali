.class public Lcom/game/sdk/domain/PayContinueInfo;
.super Ljava/lang/Object;
.source "PayContinueInfo.java"


# instance fields
.field public amount:Ljava/lang/String;

.field public appid:Ljava/lang/String;

.field public attach:Ljava/lang/String;

.field public card_id:Ljava/lang/String;

.field public good_type_name:Ljava/lang/String;

.field public goods_id:Ljava/lang/String;

.field public is_game_pay:Ljava/lang/String;

.field public md5signstr:Ljava/lang/String;

.field public orderSn:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "order_sn"
    .end annotation
.end field

.field public params:Lcom/game/sdk/domain/PayParams;

.field public pay_ways:Ljava/lang/String;

.field public productname:Ljava/lang/String;

.field public rmbMoney:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rmb_money"
    .end annotation
.end field

.field public role:Ljava/lang/String;

.field public rsmd5:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public starttime:Ljava/lang/String;

.field public user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
