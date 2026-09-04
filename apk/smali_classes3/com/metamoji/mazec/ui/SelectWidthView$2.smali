.class Lcom/metamoji/mazec/ui/SelectWidthView$2;
.super Ljava/lang/Object;
.source "SelectWidthView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/SelectWidthView;->setOnClickListener(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/SelectWidthView;

.field final synthetic val$lineWidthType:I


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/SelectWidthView;I)V
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

    .line 80
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView$2;->this$0:Lcom/metamoji/mazec/ui/SelectWidthView;

    iput p2, p0, Lcom/metamoji/mazec/ui/SelectWidthView$2;->val$lineWidthType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView$2;->this$0:Lcom/metamoji/mazec/ui/SelectWidthView;

    iget v0, p0, Lcom/metamoji/mazec/ui/SelectWidthView$2;->val$lineWidthType:I

    invoke-static {p1, v0}, Lcom/metamoji/mazec/ui/SelectWidthView;->-$$Nest$monSelectWidth(Lcom/metamoji/mazec/ui/SelectWidthView;I)V

    return-void
.end method
