.class Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;
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
    name = "PaintResponseChangedEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/nt/NtUserDefaults;",
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

    .line 2294
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/noteanytime/EditorActivity-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/nt/NtUserDefaults;)V
    .locals 2

    .line 2298
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v1, v0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setMinPaintInterval(Lcom/metamoji/nt/NtUserDefaults;Lcom/metamoji/df/sprite/Viewport;)V

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

    .line 2294
    check-cast p1, Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;->invoke(Lcom/metamoji/nt/NtUserDefaults;)V

    return-void
.end method
