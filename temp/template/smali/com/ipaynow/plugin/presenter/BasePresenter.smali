.class public abstract Lcom/ipaynow/plugin/presenter/BasePresenter;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/ipaynow/plugin/presenter/impl/Presenter;


# static fields
.field private static map:Ljava/util/HashMap;


# instance fields
.field protected loading:Lcom/ipaynow/plugin/view/IpaynowLoading;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/ipaynow/plugin/presenter/BasePresenter;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/BasePresenter;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    return-void
.end method


# virtual methods
.method protected abstract bindModel()V
.end method

.method public abstract bindView()V
.end method

.method public finishAllPresenter()V
    .locals 4

    sget-object v0, Lcom/ipaynow/plugin/presenter/BasePresenter;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ipaynow/plugin/presenter/BasePresenter;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "\u9500\u6bc1"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ipaynow/plugin/presenter/BasePresenter;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/presenter/BasePresenter;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/log/LogUtils;->d(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/presenter/BasePresenter;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->finish()V

    goto :goto_0
.end method

.method public finishPresenterByClassName(Ljava/lang/Class;)V
    .locals 2

    sget-object v0, Lcom/ipaynow/plugin/presenter/BasePresenter;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\u9500\u6bc1"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/ipaynow/plugin/presenter/BasePresenter;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/presenter/BasePresenter;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/ipaynow/plugin/presenter/BasePresenter;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/presenter/BasePresenter;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->finish()V

    sget-object v0, Lcom/ipaynow/plugin/presenter/BasePresenter;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672a\u5305\u542b\u8be5Presenter"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract initData()V
.end method

.method protected initLoading()V
    .locals 2

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMhtLoading()Lcom/ipaynow/plugin/view/IpaynowLoading;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ipaynow/plugin/view/DefaultLoadingDialog;

    invoke-direct {v0, p0}, Lcom/ipaynow/plugin/view/DefaultLoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/BasePresenter;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    :goto_0
    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/BasePresenter;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    const-string v1, "\u5b89\u5168\u73af\u5883\u626b\u63cf"

    invoke-interface {v0, v1}, Lcom/ipaynow/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/BasePresenter;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->show()Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMhtLoading()Lcom/ipaynow/plugin/view/IpaynowLoading;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/BasePresenter;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/ipaynow/plugin/presenter/BasePresenter;->map:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setPluginActivity(Lcom/ipaynow/plugin/presenter/BasePresenter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u88ab\u521b\u5efa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->initLoading()V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->bindModel()V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->initData()V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->bindView()V

    invoke-virtual {p0, v2, v2}, Lcom/ipaynow/plugin/presenter/BasePresenter;->overridePendingTransition(II)V

    sget-boolean v0, Lcom/ipaynow/plugin/conf/f;->o:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ipaynow/plugin/utils/h;->p(Landroid/content/Context;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ipaynow/plugin/utils/h;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/BasePresenter;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/BasePresenter;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setPluginStarted(Z)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->releaseViewResource()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public abstract releaseViewResource()V
.end method
