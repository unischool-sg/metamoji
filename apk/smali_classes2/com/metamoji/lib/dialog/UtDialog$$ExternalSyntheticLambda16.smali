.class public final synthetic Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/dialog/UtDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda16;->f$0:Lcom/metamoji/lib/dialog/UtDialog;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda16;->f$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {v0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog;->setupWindowInsetsListener$lambda$15(Lcom/metamoji/lib/dialog/UtDialog;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
