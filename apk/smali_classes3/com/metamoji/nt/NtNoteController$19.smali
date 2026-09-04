.class Lcom/metamoji/nt/NtNoteController$19;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->askCollabolizeIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3756
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$19;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 3762
    :try_start_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_AskNewShareNote:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->CreateShareNoteDlg_Title:I

    invoke-static {p0, v0, v1}, Lcom/metamoji/cm/CmUtils;->modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3763
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 3765
    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewDocument(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 3769
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3759
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 3760
    new-instance v1, Lcom/metamoji/nt/NtNoteController$19$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/metamoji/nt/NtNoteController$19$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
