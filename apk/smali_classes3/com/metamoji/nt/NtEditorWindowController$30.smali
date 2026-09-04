.class Lcom/metamoji/nt/NtEditorWindowController$30;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->newDocTemplateFromCurrent(Lcom/metamoji/nt/NtNoteTemplateSettings;Lcom/metamoji/cm/PBE;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4152
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$30;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDocumentCompleted(ZLjava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    .line 4159
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$30;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    const-string v0, "NtEditorWindowController.newDocTemplateFromCurrent"

    sget v1, Lcom/metamoji/noteanytime/R$string;->Editor_NoteTemplate_Create:I

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$mshowLoadErrorMessage(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/Throwable;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
