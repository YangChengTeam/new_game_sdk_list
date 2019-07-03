.class public Lcom/game/sdk/domain/PointMessage;
.super Ljava/lang/Object;
.source "PointMessage.java"


# instance fields
.field public pointMessage:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "point_action_msg"
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
