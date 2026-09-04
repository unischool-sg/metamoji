.class public final synthetic Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;

    invoke-static {v0, p1, p2}, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;->_init_$lambda$0(Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
