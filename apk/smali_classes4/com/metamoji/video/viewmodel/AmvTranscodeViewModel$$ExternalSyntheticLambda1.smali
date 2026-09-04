.class public final synthetic Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    check-cast p1, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->createTranscoder$lambda$4$lambda$3(Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;Lcom/metamoji/video/transcoder/IAmvTranscoder;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
