.class Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;
.super Ljava/lang/Object;
.source "ScMergeNoteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/ScMergeNoteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoteListItemData"
.end annotation


# instance fields
.field public docId:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/ScMergeNoteDialog;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/ScMergeNoteDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;->this$0:Lcom/metamoji/ui/dialog/ScMergeNoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;->docId:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;->title:Ljava/lang/String;

    return-void
.end method
