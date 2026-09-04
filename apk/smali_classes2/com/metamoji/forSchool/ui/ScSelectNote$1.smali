.class Lcom/metamoji/forSchool/ui/ScSelectNote$1;
.super Ljava/lang/Object;
.source "ScSelectNote.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScSelectNote;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScSelectNote;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$1;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$1;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$msetNormalViewNumColumns(Lcom/metamoji/forSchool/ui/ScSelectNote;)V

    return-void
.end method
