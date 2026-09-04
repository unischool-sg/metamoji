.class public Lcom/metamoji/lib/dialog/UtMessageBox;
.super Lcom/metamoji/lib/dialog/UtDialogBase;
.source "UtMessageBox.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/UtMessageBox$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtMessageBox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtMessageBox.kt\ncom/metamoji/lib/dialog/UtMessageBox\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0016\u0018\u0000 12\u00020\u00012\u00020\u0002:\u00011B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010#\u001a\u00020$H\u0014J\u0008\u0010%\u001a\u00020$H\u0014J\u0008\u0010&\u001a\u00020\'H\u0016J\u0012\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u001a\u0010,\u001a\u00020\'2\u0008\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u000200H\u0016R/\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR/\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\r\u001a\u0004\u0008\u000f\u0010\t\"\u0004\u0008\u0010\u0010\u000bR/\u0010\u0012\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\r\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000bR/\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\r\u001a\u0004\u0008\u0017\u0010\t\"\u0004\u0008\u0018\u0010\u000bR/\u0010\u001a\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\r\u001a\u0004\u0008\u001b\u0010\t\"\u0004\u0008\u001c\u0010\u000bR\u001e\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001f@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u0006-"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtMessageBox;",
        "Lcom/metamoji/lib/dialog/UtDialogBase;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "<init>",
        "()V",
        "<set-?>",
        "",
        "title",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "title$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "message",
        "getMessage",
        "setMessage",
        "message$delegate",
        "okLabel",
        "getOkLabel",
        "setOkLabel",
        "okLabel$delegate",
        "cancelLabel",
        "getCancelLabel",
        "setCancelLabel",
        "cancelLabel$delegate",
        "otherLabel",
        "getOtherLabel",
        "setOtherLabel",
        "otherLabel$delegate",
        "value",
        "",
        "selectedByButton",
        "getSelectedByButton",
        "()Z",
        "createAlertBuilder",
        "Landroid/app/AlertDialog$Builder;",
        "getAlertBuilder",
        "preCreateDialog",
        "",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onClick",
        "dialog",
        "Landroid/content/DialogInterface;",
        "which",
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

.field public static final Companion:Lcom/metamoji/lib/dialog/UtMessageBox$Companion;


# instance fields
.field private final cancelLabel$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final message$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final okLabel$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final otherLabel$delegate:Lkotlin/properties/ReadWriteProperty;

.field private selectedByButton:Z

.field private final title$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "title"

    const-string v3, "getTitle()Ljava/lang/String;"

    const-class v4, Lcom/metamoji/lib/dialog/UtMessageBox;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "message"

    const-string v3, "getMessage()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "okLabel"

    const-string v3, "getOkLabel()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "cancelLabel"

    const-string v3, "getCancelLabel()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "otherLabel"

    const-string v3, "getOtherLabel()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/lib/dialog/UtMessageBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtMessageBox;->Companion:Lcom/metamoji/lib/dialog/UtMessageBox$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;-><init>()V

    .line 11
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->title$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 12
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->message$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 13
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->okLabel$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 14
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->cancelLabel$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 15
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->otherLabel$delegate:Lkotlin/properties/ReadWriteProperty;

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtMessageBox;->setDialog(Z)V

    return-void
.end method


# virtual methods
.method protected createAlertBuilder()Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 24
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getAlertBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->createAlertBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getOkLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/CharSequence;

    move-object v2, p0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getCancelLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/CharSequence;

    move-object v2, p0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 32
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getOtherLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/CharSequence;

    move-object v2, p0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    return-object v0
.end method

.method public final getCancelLabel()Ljava/lang/String;
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->cancelLabel$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->message$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getOkLabel()Ljava/lang/String;
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->okLabel$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getOtherLabel()Ljava/lang/String;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->otherLabel$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedByButton()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->selectedByButton:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->title$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->selectedByButton:Z

    const/4 p1, -0x3

    if-eq p2, p1, :cond_2

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    .line 48
    :cond_0
    sget-object p1, Lcom/metamoji/lib/dialog/IUtDialog$Status;->POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtMessageBox;->complete(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V

    return-void

    .line 50
    :cond_1
    sget-object p1, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEGATIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtMessageBox;->complete(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V

    return-void

    .line 49
    :cond_2
    sget-object p1, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEUTRAL:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtMessageBox;->complete(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getCancellable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtMessageBox;->setCancelable(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getAlertBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public preCreateDialog()V
    .locals 0

    return-void
.end method

.method public final setCancelLabel(Ljava/lang/String;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->cancelLabel$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->message$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setOkLabel(Ljava/lang/String;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->okLabel$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setOtherLabel(Ljava/lang/String;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->otherLabel$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtMessageBox;->title$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
