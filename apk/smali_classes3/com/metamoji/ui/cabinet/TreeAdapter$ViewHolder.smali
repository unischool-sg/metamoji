.class public Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/TreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field _indentLinearLayout:Landroid/widget/LinearLayout;

.field _rightPartLinearLayout:Landroid/widget/LinearLayout;

.field _targetView:Landroid/view/View;

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/TreeAdapter;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/TreeAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
