.class public Lcom/game91/framework/result/Rx2ActivityResult;
.super Ljava/lang/Object;
.source "Rx2ActivityResult.java"


# static fields
.field static final BUNDLE:Ljava/lang/String; = "Bundle"

.field static final INTENT:Ljava/lang/String; = "intent"

.field static final REQUEST_CODE:Ljava/lang/String; = "request"

.field static sActivityResults:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/game91/library/rxjava/subjects/PublishSubject",
            "<",
            "Lcom/game91/framework/result/ActivityResult2;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/game91/framework/result/Rx2ActivityResult;->sActivityResults:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 49
    sget-object v2, Lcom/game91/framework/result/Rx2ActivityResult;->sActivityResults:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game91/library/rxjava/subjects/PublishSubject;

    .line 50
    .local v1, "resultPublisher":Lcom/game91/library/rxjava/subjects/PublishSubject;, "Lcom/game91/library/rxjava/subjects/PublishSubject<Lcom/game91/framework/result/ActivityResult2;>;"
    new-instance v0, Lcom/game91/framework/result/ActivityResult2;

    invoke-direct {v0, p0, p1, p2}, Lcom/game91/framework/result/ActivityResult2;-><init>(IILandroid/content/Intent;)V

    .line 51
    .local v0, "result":Lcom/game91/framework/result/ActivityResult2;
    invoke-virtual {v1, v0}, Lcom/game91/library/rxjava/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v1}, Lcom/game91/library/rxjava/subjects/PublishSubject;->onComplete()V

    .line 53
    return-void
.end method

.method public static onError(ILandroid/content/ActivityNotFoundException;)V
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "exception"    # Landroid/content/ActivityNotFoundException;

    .prologue
    .line 44
    sget-object v1, Lcom/game91/framework/result/Rx2ActivityResult;->sActivityResults:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/library/rxjava/subjects/PublishSubject;

    .line 45
    .local v0, "resultPublisher":Lcom/game91/library/rxjava/subjects/PublishSubject;, "Lcom/game91/library/rxjava/subjects/PublishSubject<Lcom/game91/framework/result/ActivityResult2;>;"
    invoke-virtual {v0, p1}, Lcom/game91/library/rxjava/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/game91/library/rxjava/Observable;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "I)",
            "Lcom/game91/library/rxjava/Observable",
            "<",
            "Lcom/game91/framework/result/ActivityResult2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lcom/game91/library/rxjava/subjects/PublishSubject;->create()Lcom/game91/library/rxjava/subjects/PublishSubject;

    move-result-object v1

    .line 27
    .local v1, "resultPublisher":Lcom/game91/library/rxjava/subjects/PublishSubject;, "Lcom/game91/library/rxjava/subjects/PublishSubject<Lcom/game91/framework/result/ActivityResult2;>;"
    sget-object v4, Lcom/game91/framework/result/Rx2ActivityResult;->sActivityResults:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/game91/framework/result/RxResultActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v3, "shadowIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    invoke-static {}, Lcom/game91/core/instant/virtualapk/Systems;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/game91/framework/result/RxResultActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 30
    const-string v4, "intent"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    const-string v4, "request"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    sget-object v4, Lcom/game91/framework/result/Rx2ActivityResult;->sActivityResults:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game91/library/rxjava/subjects/PublishSubject;

    .line 37
    .local v2, "resultPublisher1":Lcom/game91/library/rxjava/subjects/PublishSubject;, "Lcom/game91/library/rxjava/subjects/PublishSubject<Lcom/game91/framework/result/ActivityResult2;>;"
    invoke-virtual {v2, v0}, Lcom/game91/library/rxjava/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
