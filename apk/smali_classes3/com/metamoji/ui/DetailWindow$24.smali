.class Lcom/metamoji/ui/DetailWindow$24;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailWindow;->onSelect(Lcom/metamoji/nt/NtNoteController$NoteMode;IZ)V
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

    .line 1491
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$24;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1493
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow$24;->this$0:Lcom/metamoji/ui/DetailWindow;

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_DRAW_CLEAR:Lcom/metamoji/nt/NtCommand;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$mexecCommand(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    .line 1494
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1495
    const-string p2, "index"

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1496
    iget-object p2, p0, Lcom/metamoji/ui/DetailWindow$24;->this$0:Lcom/metamoji/ui/DetailWindow;

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-static {p2, v0, p1}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$mexecCommand(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
