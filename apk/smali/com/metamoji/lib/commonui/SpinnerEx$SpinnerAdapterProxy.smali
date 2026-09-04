.class public final Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;
.super Ljava/lang/Object;
.source "SpinnerEx.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/commonui/SpinnerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "SpinnerAdapterProxy"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0084\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J2\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u000b2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015H\u0096\u0002\u00a2\u0006\u0002\u0010\u0016J$\u0010\n\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0017\u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;",
        "Ljava/lang/reflect/InvocationHandler;",
        "obj",
        "Landroid/widget/SpinnerAdapter;",
        "<init>",
        "(Lcom/metamoji/lib/commonui/SpinnerEx;Landroid/widget/SpinnerAdapter;)V",
        "getObj",
        "()Landroid/widget/SpinnerAdapter;",
        "setObj",
        "(Landroid/widget/SpinnerAdapter;)V",
        "getView",
        "Ljava/lang/reflect/Method;",
        "getGetView",
        "()Ljava/lang/reflect/Method;",
        "setGetView",
        "(Ljava/lang/reflect/Method;)V",
        "invoke",
        "",
        "proxy",
        "m",
        "args",
        "",
        "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "getInflater",
        "()Landroid/view/LayoutInflater;",
        "Landroid/view/View;",
        "position",
        "",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "commonui"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private getView:Ljava/lang/reflect/Method;

.field private obj:Landroid/widget/SpinnerAdapter;

.field final synthetic this$0:Lcom/metamoji/lib/commonui/SpinnerEx;


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/commonui/SpinnerEx;Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SpinnerAdapter;",
            ")V"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->this$0:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->obj:Landroid/widget/SpinnerAdapter;

    .line 206
    :try_start_0
    const-class p1, Landroid/widget/SpinnerAdapter;

    .line 207
    const-string p2, "getView"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/view/View;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/view/ViewGroup;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 206
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->getView:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 210
    new-instance p2, Ljava/lang/RuntimeException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final getInflater()Landroid/view/LayoutInflater;
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->this$0:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {v0}, Lcom/metamoji/lib/commonui/SpinnerEx;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected final getGetView()Ljava/lang/reflect/Method;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->getView:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method protected final getObj()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->obj:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method protected final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-gez p1, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->getInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x1090008

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 197
    iget-object p2, p0, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->this$0:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {p2}, Lcom/metamoji/lib/commonui/SpinnerEx;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    check-cast p2, Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x3f19999a    # 0.6f

    .line 198
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 199
    check-cast p1, Landroid/view/View;

    return-object p1

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->obj:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "getView(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    const-string v0, "m"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->getView:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    aget-object v0, p3, v1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    .line 168
    aget-object p2, p3, v1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    .line 169
    aget-object p2, p3, p2

    instance-of v0, p2, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    const/4 v0, 0x2

    .line 170
    aget-object p3, p3, v0

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v1, p3

    check-cast v1, Landroid/view/ViewGroup;

    .line 167
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->obj:Landroid/widget/SpinnerAdapter;

    if-nez p3, :cond_3

    new-array p3, v1, [Ljava/lang/Object;

    :cond_3
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 178
    new-instance p2, Ljava/lang/RuntimeException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

.method protected final setGetView(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->getView:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected final setObj(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;->obj:Landroid/widget/SpinnerAdapter;

    return-void
.end method
