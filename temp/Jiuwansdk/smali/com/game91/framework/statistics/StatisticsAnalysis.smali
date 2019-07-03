.class public Lcom/game91/framework/statistics/StatisticsAnalysis;
.super Ljava/lang/Object;
.source "StatisticsAnalysis.java"


# static fields
.field private static sMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static statisticses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game91/framework/statistics/IStatistics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/game91/framework/statistics/StatisticsAnalysis;->statisticses:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/game91/framework/statistics/StatisticsAnalysis;->sMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addStatistics(Lcom/game91/framework/statistics/IStatistics;)V
    .locals 1
    .param p0, "iStatistics"    # Lcom/game91/framework/statistics/IStatistics;

    .prologue
    .line 22
    sget-object v0, Lcom/game91/framework/statistics/StatisticsAnalysis;->statisticses:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public static doExit(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    sget-object v3, Lcom/game91/framework/statistics/StatisticsAnalysis;->statisticses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game91/framework/statistics/IStatistics;

    .line 88
    .local v2, "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :try_start_0
    invoke-interface {v2, p0}, Lcom/game91/framework/statistics/IStatistics;->doExit(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 92
    .local v1, "error":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v1    # "error":Ljava/lang/Error;
    .end local v2    # "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :cond_0
    return-void
.end method

.method public static doInit(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    sget-object v3, Lcom/game91/framework/statistics/StatisticsAnalysis;->statisticses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game91/framework/statistics/IStatistics;

    .line 28
    .local v2, "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :try_start_0
    invoke-interface {v2, p0}, Lcom/game91/framework/statistics/IStatistics;->doInit(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 32
    .local v1, "error":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v1    # "error":Ljava/lang/Error;
    .end local v2    # "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :cond_0
    return-void
.end method

.method public static doLogin(Ljava/lang/String;)V
    .locals 5
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v3, Lcom/game91/framework/statistics/StatisticsAnalysis;->statisticses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game91/framework/statistics/IStatistics;

    .line 76
    .local v2, "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :try_start_0
    invoke-static {}, Lcom/game91/framework/impl/GameSystems;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-interface {v2, v4, p0}, Lcom/game91/framework/statistics/IStatistics;->doLogin(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 80
    .local v1, "error":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v1    # "error":Ljava/lang/Error;
    .end local v2    # "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :cond_0
    return-void
.end method

.method public static doResgist(Ljava/lang/String;)V
    .locals 5
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v3, Lcom/game91/framework/statistics/StatisticsAnalysis;->statisticses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game91/framework/statistics/IStatistics;

    .line 64
    .local v2, "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :try_start_0
    invoke-static {}, Lcom/game91/framework/impl/GameSystems;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-interface {v2, v4, p0}, Lcom/game91/framework/statistics/IStatistics;->doResgist(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 68
    .local v1, "error":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v1    # "error":Ljava/lang/Error;
    .end local v2    # "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :cond_0
    return-void
.end method

.method public static varargs onEvent(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 98
    sget-object v4, Lcom/game91/framework/statistics/StatisticsAnalysis;->statisticses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game91/framework/statistics/IStatistics;

    .line 100
    .local v3, "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :try_start_0
    instance-of v4, v3, Lcom/game91/framework/statistics/IEvent;

    if-eqz v4, :cond_0

    .line 101
    move-object v0, v3

    check-cast v0, Lcom/game91/framework/statistics/IEvent;

    move-object v4, v0

    invoke-static {}, Lcom/game91/framework/impl/GameSystems;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-interface {v4, v6, p1, p2}, Lcom/game91/framework/statistics/IEvent;->onEvent(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_0
    invoke-interface {v3, p0}, Lcom/game91/framework/statistics/IStatistics;->doExit(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 107
    .local v2, "error":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v2    # "error":Ljava/lang/Error;
    .end local v3    # "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :cond_1
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    sget-object v3, Lcom/game91/framework/statistics/StatisticsAnalysis;->statisticses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game91/framework/statistics/IStatistics;

    .line 52
    .local v2, "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :try_start_0
    invoke-interface {v2, p0}, Lcom/game91/framework/statistics/IStatistics;->onPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 56
    .local v1, "error":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v1    # "error":Ljava/lang/Error;
    .end local v2    # "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :cond_0
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    sget-object v3, Lcom/game91/framework/statistics/StatisticsAnalysis;->statisticses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game91/framework/statistics/IStatistics;

    .line 40
    .local v2, "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :try_start_0
    invoke-interface {v2, p0}, Lcom/game91/framework/statistics/IStatistics;->onResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 44
    .local v1, "error":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v1    # "error":Ljava/lang/Error;
    .end local v2    # "statisticse":Lcom/game91/framework/statistics/IStatistics;
    :cond_0
    return-void
.end method

.method public static tag()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/game91/framework/statistics/StatisticsAnalysis;->sMap:Ljava/util/Map;

    return-object v0
.end method
