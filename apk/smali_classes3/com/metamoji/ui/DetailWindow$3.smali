.class Lcom/metamoji/ui/DetailWindow$3;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailWindow;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailWindow;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$3;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 188
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow$3;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {p1}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_sheet(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p1

    .line 189
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p1, v0, :cond_0

    return-void

    .line 192
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 193
    const-string v0, "index"

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$3;->this$0:Lcom/metamoji/ui/DetailWindow;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-static {v0, v1, p1}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$mexecCommand(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
