.class Lcom/metamoji/mazec/ui/MenuSelectBase$1;
.super Ljava/lang/Object;
.source "MenuSelectBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MenuSelectBase;->setOnClickListener(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MenuSelectBase;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MenuSelectBase;I)V
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

    .line 75
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectBase$1;->this$0:Lcom/metamoji/mazec/ui/MenuSelectBase;

    iput p2, p0, Lcom/metamoji/mazec/ui/MenuSelectBase$1;->val$val:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectBase$1;->this$0:Lcom/metamoji/mazec/ui/MenuSelectBase;

    iget v0, p0, Lcom/metamoji/mazec/ui/MenuSelectBase$1;->val$val:I

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/MenuSelectBase;->onSelect(I)V

    return-void
.end method
