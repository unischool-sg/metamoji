.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startEditorActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$copiedDocId:Ljava/lang/String;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$isReadOnly:Z

.field final synthetic val$pageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5020
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$copiedDocId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$docId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$driveId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$pageId:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$isReadOnly:Z

    iput-object p7, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$command:Ljava/lang/String;

    iput-object p8, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5020
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5025
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_isEditing(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Z)V

    .line 5026
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$copiedDocId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$docId:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$driveId:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$pageId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$isReadOnly:Z

    iget-object v7, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$command:Ljava/lang/String;

    iget-object v8, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;->val$cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;

    invoke-static/range {v1 .. v8}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startEditorActivity(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return-object v0
.end method
