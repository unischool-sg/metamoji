.class public final Lcom/metamoji/lib/dialog/UtMultiSelectionBox;
.super Lcom/metamoji/lib/dialog/UtMessageBox;
.source "UtSelectionBox.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/UtMultiSelectionBox$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtSelectionBox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtSelectionBox.kt\ncom/metamoji/lib/dialog/UtMultiSelectionBox\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,138:1\n777#2:139\n873#2,2:140\n1586#2:142\n1661#2,3:143\n37#3,2:146\n*S KotlinDebug\n*F\n+ 1 UtSelectionBox.kt\ncom/metamoji/lib/dialog/UtMultiSelectionBox\n*L\n111#1:139\n111#1:140,2\n111#1:142\n111#1:143,3\n111#1:146,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0018\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0018\u001a\u00020\u0019H\u0014J\"\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016R7\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u000e\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtMultiSelectionBox;",
        "Lcom/metamoji/lib/dialog/UtMessageBox;",
        "Landroid/content/DialogInterface$OnMultiChoiceClickListener;",
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
        "selectionFlags",
        "getSelectionFlags",
        "()[Z",
        "setSelectionFlags",
        "([Z)V",
        "selectionFlags$delegate",
        "selectedItems",
        "getSelectedItems",
        "getAlertBuilder",
        "Landroid/app/AlertDialog$Builder;",
        "onClick",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "which",
        "",
        "isChecked",
        "",
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

.field public static final Companion:Lcom/metamoji/lib/dialog/UtMultiSelectionBox$Companion;


# instance fields
.field private final items$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final selectionFlags$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "items"

    const-string v3, "getItems()[Ljava/lang/String;"

    const-class v4, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "selectionFlags"

    const-string v3, "getSelectionFlags()[Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/metamoji/lib/dialog/UtMultiSelectionBox$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->Companion:Lcom/metamoji/lib/dialog/UtMultiSelectionBox$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringArray()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->items$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 109
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanArray()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->selectionFlags$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method


# virtual methods
.method protected getAlertBuilder()Landroid/app/AlertDialog$Builder;
    .locals 4

    .line 114
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getAlertBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->getSelectionFlags()[Z

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "setMultiChoiceItems(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getItems()[Ljava/lang/String;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->items$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedItems()[Ljava/lang/String;
    .locals 5

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getIndices([Ljava/lang/Object;)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 140
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->getSelectionFlags()[Z

    move-result-object v4

    aget-boolean v3, v4, v3

    if-eqz v3, :cond_0

    .line 140
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 139
    check-cast v1, Ljava/lang/Iterable;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 143
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 144
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    .line 144
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 142
    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 147
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectionFlags()[Z
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->selectionFlags$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    if-ltz p2, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->getSelectionFlags()[Z

    move-result-object p1

    aput-boolean p3, p1, p2

    return-void

    .line 121
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtMessageBox;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public final setItems([Ljava/lang/String;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->items$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSelectionFlags([Z)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->selectionFlags$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
