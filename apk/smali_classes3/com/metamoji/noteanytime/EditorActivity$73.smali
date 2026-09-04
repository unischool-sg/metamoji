.class Lcom/metamoji/noteanytime/EditorActivity$73;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->setCollaboModeBarListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6739
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$73;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWidthChanged(I)V
    .locals 1

    .line 6742
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$73;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {v0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$monCollaboModeBarWidthChanged(Lcom/metamoji/noteanytime/EditorActivity;I)V

    return-void
.end method
