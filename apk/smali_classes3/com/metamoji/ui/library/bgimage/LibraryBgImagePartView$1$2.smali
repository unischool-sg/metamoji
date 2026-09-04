.class Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1$2;
.super Ljava/lang/Object;
.source "LibraryBgImagePartView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;

.field final synthetic val$thumbnailFrame:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1$2;->this$1:Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;

    iput-object p2, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1$2;->val$thumbnailFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1$2;->val$thumbnailFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
