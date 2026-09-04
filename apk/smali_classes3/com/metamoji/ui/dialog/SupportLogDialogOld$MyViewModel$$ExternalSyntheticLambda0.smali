.class public final synthetic Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;->logZipForShare_delegate$lambda$2(Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
