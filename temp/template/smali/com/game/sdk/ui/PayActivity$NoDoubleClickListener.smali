.class public abstract Lcom/game/sdk/ui/PayActivity$NoDoubleClickListener;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "NoDoubleClickListener"
.end annotation


# static fields
.field public static final MIN_CLICK_DELAY_TIME:I = 0x1388


# instance fields
.field private lastClickTime:J

.field final synthetic this$0:Lcom/game/sdk/ui/PayActivity;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/PayActivity;)V
    .locals 2

    .prologue
    .line 489
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity$NoDoubleClickListener;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/game/sdk/ui/PayActivity$NoDoubleClickListener;->lastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 498
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 499
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/game/sdk/ui/PayActivity$NoDoubleClickListener;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u70b9\u51fb\u89e6\u53d1\u652f\u4ed8--->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 501
    iput-wide v0, p0, Lcom/game/sdk/ui/PayActivity$NoDoubleClickListener;->lastClickTime:J

    .line 502
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/PayActivity$NoDoubleClickListener;->onNoDoubleClick(Landroid/view/View;)V

    .line 504
    :cond_0
    return-void
.end method

.method public abstract onNoDoubleClick(Landroid/view/View;)V
.end method
