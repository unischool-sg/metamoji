.class Lcom/metamoji/nt/NtClientSettingsStore$2;
.super Ljava/lang/Object;
.source "NtClientSettingsStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtClientSettingsStore;->_restoreClientSettingsFromServerOld()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 303
    invoke-static {}, Lcom/metamoji/nt/NtMazecManager;->getInstance()Lcom/metamoji/nt/NtMazecManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMazecManager;->reloadSettings()V

    return-void
.end method
