.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$39;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editShareNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;


# direct methods
.method constructor <init>(Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4626
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$39;->val$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4629
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$39;->val$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->GetErrorInfo()Lcom/metamoji/sd/SdError;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    return-void
.end method
