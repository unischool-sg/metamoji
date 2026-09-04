.class Lcom/metamoji/ui/HoverSelectorView$4;
.super Ljava/lang/Object;
.source "HoverSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HoverSelectorView;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HoverSelectorView;

.field final synthetic val$open2:Z

.field final synthetic val$sel:Lcom/metamoji/nt/NtNoteController$NoteMode;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HoverSelectorView;Lcom/metamoji/nt/NtNoteController$NoteMode;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 1024
    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView$4;->this$0:Lcom/metamoji/ui/HoverSelectorView;

    iput-object p2, p0, Lcom/metamoji/ui/HoverSelectorView$4;->val$sel:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-boolean p3, p0, Lcom/metamoji/ui/HoverSelectorView$4;->val$open2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1027
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView$4;->this$0:Lcom/metamoji/ui/HoverSelectorView;

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView$4;->val$sel:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iget-boolean v2, p0, Lcom/metamoji/ui/HoverSelectorView$4;->val$open2:Z

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/HoverSelectorView;->SetMode(Lcom/metamoji/nt/NtNoteController$NoteMode;Z)V

    return-void
.end method
