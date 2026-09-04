.class Lcom/metamoji/nt/NtNoteController$45;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->pastePageInnrFromModelManager(Lcom/metamoji/df/model/IModelManager;IZZZ)Ljava/lang/String;
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

    .line 5676
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$45;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5679
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_PastePageFromDoc_FailedToLoadDocument_UnsupportedVersion:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->MsgTitle_ImportToCurrentNote_Failed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
