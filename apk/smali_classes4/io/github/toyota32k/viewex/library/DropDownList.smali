.class public final Lio/github/toyota32k/viewex/library/DropDownList;
.super Landroid/widget/FrameLayout;
.source "DropDownList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/github/toyota32k/viewex/library/DropDownList;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "outline",
        "Lcom/google/android/material/textfield/TextInputLayout;",
        "getOutline",
        "()Lcom/google/android/material/textfield/TextInputLayout;",
        "input",
        "Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;",
        "getInput",
        "()Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;",
        "library"
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
.field private final input:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

.field private final outline:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/github/toyota32k/viewex/library/DropDownList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/github/toyota32k/viewex/library/DropDownList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance p2, Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p3, 0x0

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TextInputLayout_OutlinedBox_Dense_ExposedDropdownMenu:I

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lio/github/toyota32k/viewex/library/DropDownList;->outline:Lcom/google/android/material/textfield/TextInputLayout;

    .line 18
    new-instance p2, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-direct {p2, p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/github/toyota32k/viewex/library/DropDownList;->input:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/github/toyota32k/viewex/library/DropDownList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getInput()Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/github/toyota32k/viewex/library/DropDownList;->input:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    return-object v0
.end method

.method public final getOutline()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/github/toyota32k/viewex/library/DropDownList;->outline:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method
