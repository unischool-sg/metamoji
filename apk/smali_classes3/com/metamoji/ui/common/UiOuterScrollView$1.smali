.class Lcom/metamoji/ui/common/UiOuterScrollView$1;
.super Ljava/util/ArrayList;
.source "UiOuterScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiOuterScrollView;
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
.field final synthetic this$0:Lcom/metamoji/ui/common/UiOuterScrollView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiOuterScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/metamoji/ui/common/UiOuterScrollView$1;->this$0:Lcom/metamoji/ui/common/UiOuterScrollView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const-class p1, Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiOuterScrollView$1;->add(Ljava/lang/Object;)Z

    .line 28
    const-class p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiOuterScrollView$1;->add(Ljava/lang/Object;)Z

    .line 29
    const-class p1, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiOuterScrollView$1;->add(Ljava/lang/Object;)Z

    .line 30
    const-class p1, Landroid/widget/GridView;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiOuterScrollView$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
