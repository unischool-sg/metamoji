.class Lcom/metamoji/nt/NtMazecImsManager$7$1;
.super Landroid/os/ResultReceiver;
.source "NtMazecImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager$7;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager$7;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$7$1;->this$0:Lcom/metamoji/nt/NtMazecImsManager$7;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 346
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$smonShowReceiveResult()V

    return-void
.end method
