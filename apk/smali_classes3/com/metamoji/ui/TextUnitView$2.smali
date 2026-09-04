.class Lcom/metamoji/ui/TextUnitView$2;
.super Ljava/lang/Object;
.source "TextUnitView.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/TextUnitView;->appearContextMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/TextUnitView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/TextUnitView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitView$2;->this$0:Lcom/metamoji/ui/TextUnitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitView$2;->this$0:Lcom/metamoji/ui/TextUnitView;

    invoke-static {p1}, Lcom/metamoji/ui/TextUnitView;->-$$Nest$mcopy(Lcom/metamoji/ui/TextUnitView;)V

    return-void
.end method
