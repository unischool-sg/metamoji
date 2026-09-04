.class public final Lcom/metamoji/un/draw2/jni/DrawUnitComponent;
.super Ljava/lang/Object;
.source "DrawUnitComponent.java"


# static fields
.field private static initialized:Z = false

.field public static final moduleName:Ljava/lang/String; = "DrawUnitComponent"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized use()V
    .locals 2

    const-class v0, Lcom/metamoji/un/draw2/jni/DrawUnitComponent;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-boolean v1, Lcom/metamoji/un/draw2/jni/DrawUnitComponent;->initialized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 29
    sput-boolean v1, Lcom/metamoji/un/draw2/jni/DrawUnitComponent;->initialized:Z

    .line 30
    sget-object v1, Lcom/metamoji/un/draw2/jni/DrawUnitComponent;->moduleName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
