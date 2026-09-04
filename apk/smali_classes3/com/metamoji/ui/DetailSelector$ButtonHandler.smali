.class Lcom/metamoji/ui/DetailSelector$ButtonHandler;
.super Ljava/lang/Object;
.source "DetailSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/DetailSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonHandler"
.end annotation


# instance fields
.field _index:I

.field final synthetic this$0:Lcom/metamoji/ui/DetailSelector;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailSelector;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/metamoji/ui/DetailSelector$ButtonHandler;->this$0:Lcom/metamoji/ui/DetailSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p2, p0, Lcom/metamoji/ui/DetailSelector$ButtonHandler;->_index:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/metamoji/ui/DetailSelector$ButtonHandler;->this$0:Lcom/metamoji/ui/DetailSelector;

    iget v0, p0, Lcom/metamoji/ui/DetailSelector$ButtonHandler;->_index:I

    invoke-static {p1, v0}, Lcom/metamoji/ui/DetailSelector;->-$$Nest$monSelect(Lcom/metamoji/ui/DetailSelector;I)V

    return-void
.end method
