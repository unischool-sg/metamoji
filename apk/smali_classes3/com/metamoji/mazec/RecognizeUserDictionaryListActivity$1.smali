.class Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$1;
.super Ljava/lang/Object;
.source "RecognizeUserDictionaryListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$1;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$1;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

    invoke-virtual {p1, p3}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->onClickStrokesAt(I)V

    return-void
.end method
