.class public Lcom/ipaynow/plugin/inner_plugin/qqwp/model/QQWapPayModel;
.super Lcom/ipaynow/plugin/model/BaseModel;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/presenter/impl/Presenter;Lcom/ipaynow/plugin/view/IpaynowLoading;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ipaynow/plugin/model/BaseModel;-><init>(Lcom/ipaynow/plugin/presenter/impl/Presenter;Lcom/ipaynow/plugin/view/IpaynowLoading;)V

    return-void
.end method


# virtual methods
.method public taskCallBack(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/model/QQWapPayModel;->visitor:Lcom/ipaynow/plugin/presenter/impl/Presenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/model/QQWapPayModel;->visitor:Lcom/ipaynow/plugin/presenter/impl/Presenter;

    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/presenter/impl/Presenter;->modelCallBack(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    :cond_0
    return-void
.end method
