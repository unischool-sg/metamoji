.class Lcom/metamoji/ui/common/UiOuterHorzScrollView$1;
.super Ljava/util/ArrayList;
.source "UiOuterHorzScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiOuterHorzScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiOuterHorzScrollView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiOuterHorzScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/metamoji/ui/common/UiOuterHorzScrollView$1;->this$0:Lcom/metamoji/ui/common/UiOuterHorzScrollView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    const-class p1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiOuterHorzScrollView$1;->add(Ljava/lang/Object;)Z

    .line 24
    const-class p1, Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiOuterHorzScrollView$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
