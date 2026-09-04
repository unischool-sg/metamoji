.class public Lcom/metamoji/mazec/purchase/util/CmLog;
.super Ljava/lang/Object;
.source "CmLog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Mazec"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 104
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    .line 24
    const-string v0, "Mazec"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 1

    .line 41
    const-string v0, "error"

    invoke-static {p0, v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 50
    const-string v0, "Mazec"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 86
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 122
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 68
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->warn(Ljava/lang/String;)V

    return-void
.end method
