.class public final synthetic Lcom/metamoji/media/voice/controller/VcRecordingsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;

    invoke-static {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->lambda$playFromDate$0(Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;)V

    return-void
.end method
