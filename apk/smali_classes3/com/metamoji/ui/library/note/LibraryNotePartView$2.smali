.class Lcom/metamoji/ui/library/note/LibraryNotePartView$2;
.super Ljava/lang/Object;
.source "LibraryNotePartView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/note/LibraryNotePartView;->initCanvas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/note/LibraryNotePartView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/note/LibraryNotePartView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$2;->this$0:Lcom/metamoji/ui/library/note/LibraryNotePartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$2;->this$0:Lcom/metamoji/ui/library/note/LibraryNotePartView;

    invoke-static {p1}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->access$300(Lcom/metamoji/ui/library/note/LibraryNotePartView;)Z

    return-void
.end method
