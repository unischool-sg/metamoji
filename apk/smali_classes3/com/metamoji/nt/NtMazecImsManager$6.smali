.class Lcom/metamoji/nt/NtMazecImsManager$6;
.super Landroid/os/ResultReceiver;
.source "NtMazecImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->toggleImeAndMazecCore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 313
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$smonHideReceiveResult()V

    return-void
.end method
