.class public Lcom/metamoji/lib/dialog/UtRadioSelectionBox;
.super Lcom/metamoji/lib/dialog/UtMessageBox;
.source "UtSelectionBox.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/UtRadioSelectionBox$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u001cH\u0014J\u001a\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\u000fH\u0016R7\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u000e\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtRadioSelectionBox;",
        "Lcom/metamoji/lib/dialog/UtMessageBox;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "<init>",
        "()V",
        "<set-?>",
        "",
        "",
        "items",
        "getItems",
        "()[Ljava/lang/String;",
        "setItems",
        "([Ljava/lang/String;)V",
        "items$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "",
        "selectedIndex",
        "getSelectedIndex",
        "()I",
        "setSelectedIndex",
        "(I)V",
        "selectedIndex$delegate",
        "selectedItem",
        "getSelectedItem",
        "()Ljava/lang/String;",
        "listAdapter",
        "Landroid/widget/ListAdapter;",
        "getAlertBuilder",
        "Landroid/app/AlertDialog$Builder;",
        "onClick",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "which",
        "Companion"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/metamoji/lib/dialog/UtRadioSelectionBox$Companion;


# instance fields
.field private final items$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final selectedIndex$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "items"

    const-string v3, "getItems()[Ljava/lang/String;"

    const-class v4, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "selectedIndex"

    const-string v3, "getSelectedIndex()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/metamoji/lib/dialog/UtRadioSelectionBox$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->Companion:Lcom/metamoji/lib/dialog/UtRadioSelectionBox$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringArray()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->items$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getIntMinusOne()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->selectedIndex$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method


# virtual methods
.method protected getAlertBuilder()Landroid/app/AlertDialog$Builder;
    .locals 4

    .line 75
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getAlertBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->listAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->getSelectedIndex()I

    move-result v2

    move-object v3, p0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->getSelectedIndex()I

    move-result v2

    move-object v3, p0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method public final getItems()[Ljava/lang/String;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->items$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedIndex()I
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->selectedIndex$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSelectedItem()Ljava/lang/String;
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->getSelectedIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->getSelectedIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected listAdapter()Landroid/widget/ListAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-ltz p2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 87
    invoke-virtual {p0, p2}, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->setSelectedIndex(I)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtMessageBox;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public final setItems([Ljava/lang/String;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->items$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSelectedIndex(I)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->selectedIndex$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtRadioSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
