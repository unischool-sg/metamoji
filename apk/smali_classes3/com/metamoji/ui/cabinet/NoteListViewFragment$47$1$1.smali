.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5142
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 5146
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$docId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5147
    new-instance v1, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    invoke-direct {v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;-><init>()V

    .line 5148
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$driveId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 5151
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$docId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5152
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v3, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getAbsPathMatchTags(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5153
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 5154
    const-string v2, "[ %s ] : [ %s ] : %s"

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$driveId:Ljava/lang/String;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    iget-object v4, v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;

    iget-object v4, v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$docTitle:Ljava/lang/String;

    filled-new-array {v3, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x197

    .line 5155
    invoke-static {v2, v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 5157
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$docTitle:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mexportNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
