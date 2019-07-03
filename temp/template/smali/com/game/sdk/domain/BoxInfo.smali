.class public Lcom/game/sdk/domain/BoxInfo;
.super Ljava/lang/Object;
.source "BoxInfo.java"


# instance fields
.field public boxDownUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "box_down_url"
    .end annotation
.end field

.field public boxPackageName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "box_package_name"
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
