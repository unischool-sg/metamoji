.class Lcom/metamoji/ui/dialog/PaperBackground$2;
.super Ljava/lang/Object;
.source "PaperBackground.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PaperBackground;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PaperBackground;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PaperBackground;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackground$2;->this$0:Lcom/metamoji/ui/dialog/PaperBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackground$2;->this$0:Lcom/metamoji/ui/dialog/PaperBackground;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/PaperBackground;->wakeupGallery()V

    return-void
.end method
