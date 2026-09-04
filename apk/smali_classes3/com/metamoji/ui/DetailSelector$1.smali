.class Lcom/metamoji/ui/DetailSelector$1;
.super Ljava/lang/Object;
.source "DetailSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailSelector;->init(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/nt/NtNoteController$NoteMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailSelector;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailSelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/metamoji/ui/DetailSelector$1;->this$0:Lcom/metamoji/ui/DetailSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/metamoji/ui/DetailSelector$1;->this$0:Lcom/metamoji/ui/DetailSelector;

    invoke-static {p1}, Lcom/metamoji/ui/DetailSelector;->-$$Nest$fget_dwindow(Lcom/metamoji/ui/DetailSelector;)Lcom/metamoji/ui/DetailWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailWindow;->closeSelector()V

    return-void
.end method
