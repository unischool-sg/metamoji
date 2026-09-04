.class Lcom/metamoji/mazec/ui/SelectColorView$2;
.super Ljava/lang/Object;
.source "SelectColorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/SelectColorView;->setOnClickListener(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/SelectColorView;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/SelectColorView;I)V
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

    .line 85
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectColorView$2;->this$0:Lcom/metamoji/mazec/ui/SelectColorView;

    iput p2, p0, Lcom/metamoji/mazec/ui/SelectColorView$2;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectColorView$2;->this$0:Lcom/metamoji/mazec/ui/SelectColorView;

    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView$2;->val$color:I

    invoke-static {p1, v0}, Lcom/metamoji/mazec/ui/SelectColorView;->-$$Nest$monSelectColor(Lcom/metamoji/mazec/ui/SelectColorView;I)V

    return-void
.end method
