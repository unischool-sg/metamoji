.class public Lcom/metamoji/lib/dialog/UtSingleSelectionBox;
.super Lcom/metamoji/lib/dialog/UtMessageBox;
.source "UtSelectionBox.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/metamoji/lib/dialog/IUtSingleSelectionResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/UtSingleSelectionBox$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtSelectionBox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtSelectionBox.kt\ncom/metamoji/lib/dialog/UtSingleSelectionBox\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \"2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u001cH\u0014J\u001a\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\u0011H\u0016R7\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0010\u001a\u00020\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtSingleSelectionBox;",
        "Lcom/metamoji/lib/dialog/UtMessageBox;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Lcom/metamoji/lib/dialog/IUtSingleSelectionResult;",
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
        "selectedIndex",
        "",
        "getSelectedIndex",
        "()I",
        "setSelectedIndex",
        "(I)V",
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

.field public static final Companion:Lcom/metamoji/lib/dialog/UtSingleSelectionBox$Companion;


# instance fields
.field private final items$delegate:Lkotlin/properties/ReadWriteProperty;

.field private selectedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "items"

    const-string v3, "getItems()[Ljava/lang/String;"

    const-class v4, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/metamoji/lib/dialog/UtSingleSelectionBox$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->Companion:Lcom/metamoji/lib/dialog/UtSingleSelectionBox$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringArray()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->items$delegate:Lkotlin/properties/ReadWriteProperty;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->selectedIndex:I

    return-void
.end method


# virtual methods
.method protected getAlertBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->getCancellable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->setCancelable(Z)V

    .line 33
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getAlertBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->listAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 37
    move-object v2, p0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    move-object v2, p0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method public final getItems()[Ljava/lang/String;
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->items$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->selectedIndex:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/String;
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->getSelectedIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->getSelectedIndex()I

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
    .locals 0

    if-ltz p2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-ge p2, p1, :cond_0

    .line 46
    invoke-virtual {p0, p2}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->setSelectedIndex(I)V

    .line 47
    sget-object p1, Lcom/metamoji/lib/dialog/IUtDialog$Status;->POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->complete(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V

    :cond_0
    return-void
.end method

.method public final setItems([Ljava/lang/String;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->items$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->selectedIndex:I

    return-void
.end method
