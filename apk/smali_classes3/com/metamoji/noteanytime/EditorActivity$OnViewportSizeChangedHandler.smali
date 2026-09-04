.class Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnViewportSizeChangedHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/cm/CmContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method private constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/noteanytime/EditorActivity-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 369
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$monViewportSizeChangedHandler(Lcom/metamoji/noteanytime/EditorActivity;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 366
    check-cast p1, Lcom/metamoji/cm/CmContext;

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;->invoke(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
