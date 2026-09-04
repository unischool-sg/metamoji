.class Lcom/metamoji/ui/HoverSelectorView$8;
.super Ljava/lang/Object;
.source "HoverSelectorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HoverSelectorView;->pageClearWithMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1921
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_DRAW_CLEAR:Lcom/metamoji/nt/NtCommand;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/metamoji/ui/HoverSelectorView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    .line 1922
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1923
    const-string p2, "index"

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1924
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-static {p2, p1}, Lcom/metamoji/ui/HoverSelectorView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
